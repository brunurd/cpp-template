#include <SFML/Graphics.hpp>
#include "dejavu_font.h"

int main() {
    // Create a window
    sf::RenderWindow window(sf::VideoMode(800, 600), "CPP Template");

    // Create a font
    sf::Font font;
    if (
            !font.loadFromFile("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf") ||
            !font.loadFromMemory(
                _usr_share_fonts_truetype_dejavu_DejaVuSans_ttf,
                _usr_share_fonts_truetype_dejavu_DejaVuSans_ttf_len
            )
        ) {
        // Error handling if font loading fails
        return 1;
    }

    // Create a text
    sf::Text text("Hello!", font, 72);
    text.setFillColor(sf::Color::White);
    text.setStyle(sf::Text::Bold);
    text.setPosition(400.f, 300.f);
    text.setOrigin(text.getLocalBounds().width / 2.f, text.getLocalBounds().height / 2.f);

    // Main loop
    while (window.isOpen()) {
        // Process events
        sf::Event event;
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }
        }

        // Clear the window
        window.clear(sf::Color::Black);

        // Draw the text
        window.draw(text);

        // Display the content
        window.display();
    }

    return 0;
}

