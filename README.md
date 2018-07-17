This is a repository for advanced zeg creation using XSLT SVG creation.

Hand-making XSLTs for each and every collection takes a <B><I>great deal of time</I></B>, and doesn't easily allow for a consistent look / feel
between collections. The templates in this repository do the majority of the zeg creation leg work for you, setting up the right sizes
color uses, fonts and weights, and scalability when zooming.

<B>These templates <I>DO</I> require you to tell them how to view your data:</B>
There are <B>4</B> sections to these templates:

<B>1. Column reading</B> - Copying from the example, assign your data's columns to variables for later use.

<B>2. Variable recognition</B> - Taking note of the example, there are some key variable names that <B>should not</B> be
  modified due to their use later in the file. These key variables need to be told what data are representing, so you typically
  assign your previously defined column data variables to these.
  If you like, you may also add some logic for these (<B>see gender salaries example</B>), such as an <I>xsl:choose, xsl:when</I>
  to determine what the key variable <I>buttonMainText</I> should dynamically hold.
  
<B>3. Color scheme</B> - The color scheme is simplified into 4 colors of varying shades. Simply replace these hexidecimal color codes
  with your desired palette colors and you're off. You can assign these dynamically using choose / when statements if you wish 
  (such as pink / blue in the gender salaries example).
  
<B>4. SVG generation</B> - <B>This does not require any modification.</B> These templates have been built with the intention that
  this section can be left alone. If there is an issue with this section, it is most likely a bug. Having said this, feel free
  to modify this section if absolutely necessary to change the look of the zegs or nudge some text around, but it may be the case
  that is is simply the wrong template for you.
