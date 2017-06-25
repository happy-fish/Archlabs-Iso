/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 20000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {

        Image {
            id: background1
            source: "slide.png"
            width: 500; height: 275
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background1.horizontalCenter
            anchors.top: background1.bottom
            text: "Welcome to ArchLabs Linux <br/>"+
                  "ArchLabs is based on Arch Linux, with an easy and grahical installer called Calamares.<br/>"+
                  "ArchLabs is our vision for bringing the BunsenLabs experience to Arch.<br/>"+
				  "Our vision did not end there. ArchLabs is evolving and innovating all the time"
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background2
            source: "slide2.png"
            width: 500; height: 275
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background2.horizontalCenter
            anchors.top: background2.bottom
            text: "ArchLabs features the lightning fast openbox menu,<br/>"+
                  "customized to provide amazing functionality.<br/>"+
                  "ArchLabs is low on cpu and ram consumption."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }

    Slide {

        Image {
            id: background3
            source: "slide3.png"
            width: 500; height: 275
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background3.horizontalCenter
            anchors.top: background3.bottom
            text: "With incredible theming, tweaking and configuration<br/>"+
                  "ArchLabs aimes to provide an awesome desktop experience<br/>"+
				  "out of the box."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }
    
    Slide {

        Image {
            id: background4
            source: "slide4.png"
            width: 500; height: 275
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background2.horizontalCenter
            anchors.top: background2.bottom
            text: "ArchLabs features now also i3wm tiling manager with gaps.<br/>"+
                  "This is an awesome way to tile your applications<br/>"+
                  "over one or more monitors. Very fast, low on cpu and mem as well."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }
    
        Slide {

        Image {
            id: background5
            source: "slide5.png"
            width: 500; height: 275
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background2.horizontalCenter
            anchors.top: background2.bottom
            text: "Concentrated fun out of the box.<br/>"+
                  "Less frustrations more fun.<br/>"+
                  "Install. Change wallpaper, theme, icons, cursor, conky. Done."
            wrapMode: Text.WordWrap
            width: 600
            horizontalAlignment: Text.Center
        }
    }
}
