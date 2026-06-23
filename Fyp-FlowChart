# Hierarchical System Execution Flow

This document outlines the end-to-end execution flow of the Physiotherapy Exoskeleton system. It is divided into three primary tiers: **Website (Client UI & Logic)**, **Transport (JSON & WebSocket)**, and **Hardware (ESP32 Microcontroller)**.

## Execution Flowchart

```mermaid
graph TD
    %% ---------------------------------------------
    %% TIER 1: WEB INTERFACE
    %% ---------------------------------------------
    subgraph WebApp ["1. Website Interface / Client Side"]
        direction TB
        User(("Caregiver / User"))
        
        subgraph Inputs ["Input Methods"]
            LiveBtn["Live Override Buttons"]
            ES["Emergency Stop"]
            Queue["Scheduled Queue / Routine"]
        end
        
        User --> LiveBtn
        User --> ES
        User --> Queue
        
        JS_Router{"JS Command Router<br>executeCommand(m, d)"}
        
        LiveBtn -->|"(m: 1, d: 1)"| JS_Router
        ES -->|"(m: 0, d: 0)"| JS_Router
        Queue -->|"async Loop"| JS_Router

        subgraph State ["Local State & Visualization"]
            ThreeJS["Three.js Digital Twin"]
            Storage[("LocalStorage / JSON Logs")]
            Graph["HTML5 Canvas Graphs"]
        end
        
        JS_Router -->|"update boneStates"| ThreeJS
        JS_Router -->|"logData()"| Storage
        Storage --> Graph
    end

    %% ---------------------------------------------
    %% TIER 2: TRANSPORT LAYER
    %% ---------------------------------------------
    subgraph Network ["2. Transport & Payload Layer"]
        PayloadOut["JSON Payload Formatter<br>JSON.stringify({m, d})"]
        WSSocket{{"WebSocket Link<br>ws://192.168.1.100:81"}}
        
        JS_Router --> PayloadOut
        PayloadOut --> WSSocket
    end

    %% ---------------------------------------------
    %% TIER 3: HARDWARE
    %% ---------------------------------------------
    subgraph ESP32 ["3. ESP32 Hardware / Server Side"]
        direction TB
        WS_Server["WebSocketsServer"]
        Parser["ArduinoJson<br>deserializeJson()"]
        
        WSSocket --> WS_Server
        WS_Server -->|"WStype_TEXT"| Parser
        
        Router_MCU{"Motor Switch Case"}
        Parser -->|"Extract m and d"| Router_MCU
        
        subgraph MotorLogic ["Hardware Control Logic"]
            M1["controlElbow()"]
            M2["controlWrist()"]
            M3["controlFingers()"]
            Stop["stopAllMotors()"]
        end
        
        Router_MCU -->|"m=1"| M1
        Router_MCU -->|"m=2"| M2
        Router_MCU -->|"m=3"| M3
        Router_MCU -->|"m=0"| Stop
        
        subgraph Actuators ["Physical Actuation"]
            Relays["GPIO Relays"]
            Motors(("Physical Joints"))
        end
        
        M1 -->|"digitalWrite LOW"| Relays
        M2 -->|"digitalWrite LOW"| Relays
        M3 -->|"digitalWrite LOW"| Relays
        Stop -->|"digitalWrite HIGH"| Relays
        
        Relays --> Motors
    end
    
    %% Feedback / Safety Loop
    MCU_Safety["Timeout & Potentiometer Failsafe"]
    Motors -.->|"Analog Voltage"| MCU_Safety
    MCU_Safety -.->|"Override"| Stop
