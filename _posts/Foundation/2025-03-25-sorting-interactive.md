---
layout: post
title: Sorting Interactive
description: Sorting Interactive
type: issues
comments: false
---

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sorting Interactive</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            font-size: 1.5em;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 40px;
        }
        .array {
            display: flex;
            gap: 20px;
            margin: 20px;
            padding: 20px;
            border: 4px solid #000;
            min-height: 100px;
            width: 80%;
            justify-content: center;
        }
        .draggable {
            padding: 20px;
            background-color: darkblue;
            color: white;
            cursor: grab;
            user-select: none;
            font-size: 1.5em;
        }
        .sorted {
            background-color: lightgreen;
        }
        .unsorted {
            background-color: red !important;
        }
        button {
            padding: 15px 30px;
            font-size: 1.5em;
            background-color: darkblue;
            color: white;
            border: none;
            cursor: pointer;
        }
        .instructions {
            margin-top: 20px;
            text-align: left;
            width: 80%;
            font-size: 1em;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="array" id="array" ondragover="event.preventDefault()" ondrop="rearrangeElement(event)">
            <div class="draggable" draggable="true" ondragstart="dragStart(event)">5</div>
            <div class="draggable" draggable="true" ondragstart="dragStart(event)">2</div>
            <div class="draggable" draggable="true" ondragstart="dragStart(event)">8</div>
            <div class="draggable" draggable="true" ondragstart="dragStart(event)">1</div>
            <div class="draggable" draggable="true" ondragstart="dragStart(event)">4</div>
            <div class="draggable" draggable="true" ondragstart="dragStart(event)">7</div>
        </div>
        <p id="status">Status: Unsorted</p>
        <button onclick="resetArray()">Reset</button>
    </div>

    <div class="instructions">
        <h2>Manual Sorting Instructions</h2>
        <h3>Insertion Sort:</h3>
        <ol>
            <li>For every element in the array, compare it to its left element (if not applicabble, move on)</li>
            <li>Compare it with the elements before it and shift larger elements to the right.</li>
            <li>Insert the selected element in its correct position. (Keep swapping UNTIL the element is greater than its left part. This creates an "inserting" effect)</li>
            <li>Repeat the process for the next element until the entire array is sorted.</li>
        </ol>
        <h3>Selection Sort:</h3>
        <ol>
            <li>Start at the first position and declare it as the current minimum.</li>
            <li>Iterate through the rest of the array to find a smaller element.</li>
            <li>If a smaller element is found, update the current minimum.</li>
            <li>Swap the current minimum with the element at the first position.</li>
            <li>Move to the next position and repeat the process until the entire array is sorted.</li>
        </ol>
    </div>

    <script>
        function rearrangeElement(event) {
            event.preventDefault();
            const draggedElement = document.querySelector('.dragging');
            const arrayContainer = document.getElementById("array");
            const afterElement = getDragAfterElement(arrayContainer, event.clientX);
            if (afterElement == null) {
                arrayContainer.appendChild(draggedElement);
            } else {
                arrayContainer.insertBefore(draggedElement, afterElement);
            }
            checkSorted();
        }

        function dragStart(event) {
            event.dataTransfer.setData("text", event.target.innerText);
            event.target.setAttribute("data-value", event.target.innerText);
            event.target.classList.add("dragging");
        }

        function dragEnd(event) {
            event.target.classList.remove("dragging");
        }

        document.querySelectorAll(".draggable").forEach(draggable => {
            draggable.addEventListener("dragstart", dragStart);
            draggable.addEventListener("dragend", dragEnd);
        });

        function getDragAfterElement(container, x) {
            const draggableElements = [...container.querySelectorAll('.draggable:not(.dragging)')];
            return draggableElements.reduce((closest, child) => {
                const box = child.getBoundingClientRect();
                const offset = x - box.left - box.width / 2;
                if (offset < 0 && offset > closest.offset) {
                    return { offset: offset, element: child };
                } else {
                    return closest;
                }
            }, { offset: Number.NEGATIVE_INFINITY }).element;
        }

        function checkSorted() {
            const arrayContainer = document.getElementById("array");
            const statusText = document.getElementById("status");
            const numbers = [...arrayContainer.children].map(el => parseInt(el.innerText));
            const sorted = numbers.every((num, i, arr) => i === 0 || arr[i - 1] <= num);
            
            if (sorted) {
                statusText.innerText = "Status: Sorted";
                arrayContainer.classList.add("sorted");
                arrayContainer.classList.remove("unsorted");
            } else {
                statusText.innerText = "Status: Unsorted";
                arrayContainer.classList.add("unsorted");
            }
        }

        function resetArray() {
            const arrayContainer = document.getElementById("array");
            arrayContainer.innerHTML = `
                <div class="draggable" draggable="true" ondragstart="dragStart(event)">5</div>
                <div class="draggable" draggable="true" ondragstart="dragStart(event)">2</div>
                <div class="draggable" draggable="true" ondragstart="dragStart(event)">8</div>
                <div class="draggable" draggable="true" ondragstart="dragStart(event)">1</div>
                <div class="draggable" draggable="true" ondragstart="dragStart(event)">4</div>
                <div class="draggable" draggable="true" ondragstart="dragStart(event)">7</div>`;
            document.getElementById("status").innerText = "Status: Unsorted";
            arrayContainer.classList.remove("sorted", "unsorted");
        }
    </script>
</body>
</html>





