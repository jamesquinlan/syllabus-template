# Course Syllabus Template

Syllabus template in LaTeX.


## Course and Instructor Settings

In the [configs.tex](configs.tex) file, edit the course and instructor parameters.  The course parameters include semester/year, course number, course name, credit hours, call number, prerequisites, class day(s)/time/location, and textbook. The instructor parameters are name, contact information, office location, and hours.   In particular, 

```tex
% DEPARTMENT
\def\dept{Department of Mathematics and Computer Science}

% COURSE SETTINGS
\def\semester{Fall 2023}
\def\coursenum{MAT 123}
\def\coursename{Course Name}
\def\credithours{3}
\def\callnumber{12345}
\def\location{Building Name 123}
\def\classtimes{T, R 2:00 \peem - 3:15 \peem}
\def\prereq{Grade of C or higher in MAT 101 and MAT 102, or permission of instructor.}
\def\textbook{Louden, K. C., \& Lambert, K. A. (2011). \textit{Programming languages: principles and} \\ & \textit{practices}. Cengage Learning.}


% INSTRUCTOR SETTINGS
\def\prof{Dr. Homer Simpson}
\def\office{123 Big Building}
\def\phone{(213) 789 - 1234}
\def\email{homer.simpson@springfield.edu}
\def\officehours{8:00 \ayem - 9:00 \peem}
```

There are optional settings controlled by logical switches for sections to include (or not), such as specific course policies or important dates.  More sections can be added to [syllabus.tex](syllabus.tex) as needed.  


## Global Directory
Files in the `common` (global) directory are university-wide policies or files common to *all* your syllabi (assuming >1 teaching load). Add files as needed and include them in [syllabus.tex](syllabus.tex).  Note: The directory named `global` gives errors in TeXLive 2020.


## Local Files

Edit files (except [courseinfo.tex](local/courseinfo.tex)) as appropriate in the local directory to meet your needs.  You may also add files as needed in the local directory, then include them in the [syllabus.tex](syllabus.tex) file.   


## Logo

Replace `assests/logo.png` with your logo of (approximate) size 130 x 20.  
If the logo is not that size, you may either resize or scale in the code,

```
\title{\includegraphics[scale=1.0]{assets/logo.png}}
```  

## Bullet Items
Itemizations such as learning outcomes are designated with a [blue square](assets/blue_bullet.png).  To return to the default bullet item (black circle), comment out line #65 in `syllabus.tex`, specifically, 

```
\renewcommand{\labelitemi}{\includegraphics[]{\assets/blue_bullet.png}}
```


## Handout Class

[Jim Fowler](https://math.osu.edu/people/fowler.291)'s Handout class

