import datetime

def log_event(event_name):
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    with open("events.log", "a") as f:
        f.write(f"[{timestamp}] EVENT: {event_name}\n")

if __name__ == "__main__":
    log_event("Hardware diagnostics initiated")
    # Add maintenance logic below
