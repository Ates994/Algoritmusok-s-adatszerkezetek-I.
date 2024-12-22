def interval_scheduling(events):
    events.sort(key=lambda x: x[1])

    selected_events = []
    last_end_time = 0

    for start, end in events:
        if start >= last_end_time:
            selected_events.append((start, end))
            last_end_time = end

    return selected_events

events = [(1, 3), (2, 5), (4, 7), (6, 9), (8, 10)]
optimal_schedule = interval_scheduling(events)

print("Optimalis ütemezés:", optimal_schedule)
