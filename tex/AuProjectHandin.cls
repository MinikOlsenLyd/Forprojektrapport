%AUProjectHandin
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{AuProjectHandin}[23/08/16 ,Basic class for school projects on AU based on memoir]

% pass options to the memoir class so we can utilize the work done there already, to avoid reinventing the wheel.
\LoadClassWithOptions{memoir}
\RequirePackage{AuHandinMacros}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}} 
\ProcessOptions

% stating out defining AU Handin layout bassed on the plain layout
\makepagestyle{AuHandin}
\copypagestyle{plain}{AuHandin}

% Defining Page Header 
% generates the header on even numbered pages. Logo placement here is according to AU logo guidelines
\makeevenhead{AuHandin}{\includegraphics[]{logo/AU-logo-blue}}{ }{\thetitle \\ \today}
% generates the header on odd numbered pages. Logo placement here is according to AU logo guidelines
\makeoddhead{AuHandin}{\includegraphics[]{logo/AU-logo-blue}}{ }{\thetitle \\ \today}

%Defining Page footer
% even numbered pages
\makeevenfoot{AuHandin}{}{}{\thepage}
% odd numbered pages
\makeoddfoot{AuHandin}{}{}{\thepage}

% draw the nice looking line above the footer
\makefootrule{AuHandin}{\textwidth}{0.02cm}{\footruleskip}
% draw the nice looking line below the header
\makeheadrule{AuHandin}{\textwidth}{0,02cm}
