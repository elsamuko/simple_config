#include <iostream>
#include <fstream>

#define LOG( A ) std::cout << A << std::endl;

class Config {
    public:
        int value = 0;
        const char* filename = "config.txt";

        void write( ) const {
            std::ofstream file( filename, std::ios::out );

            if( file.is_open() ) {
                file << "value=" << value << std::endl;
            }
        }

        int read() {
            std::ifstream file( filename, std::ios::in );

            if( file.is_open() ) {
                std::string line;

                if( std::getline( file, line ) ) {

                    size_t pos = line.find( '=' );

                    if( pos != std::string::npos ) {
                        std::string key = line.substr( 0, pos );
                        std::string value = line.substr( pos + 1 );
                        value = std::stoi( value );
                    }
                }
            }

            return value;
        }
};



int main( int argc, char* argv[] ) {

    int value = 5;
    Config config {.value = value };
    config.write();
    int valueRead = config.read();
    LOG( "value = " << value );
    LOG( "valueRead = " << valueRead );

    return 0;
}
