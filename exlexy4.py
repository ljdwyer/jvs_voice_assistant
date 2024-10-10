#!/usr/bin/python3
import sys
import whisper



def transcribe_audio(fname):
    model = whisper.load_model("large")
    result = model.transcribe(fname)
    print(result["text"])

def main():
    fname = "recorded_audio.wav"
    transcribe_audio(fname)


if __name__ == "__main__":
    main()

