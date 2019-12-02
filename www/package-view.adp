<if @show_master_p@>
<master>
<property name=title>@title;noquote@</property>
<property name="context">@context;noquote@</property>
</if>

<property name="header">
<style type="text/css">
       td.wide {
       	       width:35%;
       }
</style>
</property>

<if "" ne @error_message@>
<!-- <font color=red> -->
@error_message@
<!-- </font> -->
</if>

<if "" ne @version_id@>

<!-- @dimensional_slider;noquote@ --> 

<h2>Procedure Files</h2>
<if @procs_files_p@>
<blockquote>
<table cellspacing="0" cellpadding="0">
  <multiple name="procs_files">
  <tr valign="top">
    <td style="width:35%"><b><a href="@procs_files.view@?version_id=@version_id@&amp;path=@procs_files.full_path@">@procs_files.path@</a></b></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td>@procs_files.first_sentence@&nbsp;</td>
  </tr>
  </multiple>
</table>
</blockquote>
</if>

<if @procs_p@>
<h2>Procedures</h2>
<blockquote>
<table cellspacing="0" cellpadding="0">
  <multiple name="procedures">
  <tr valign="top">
    <td style="width:35%"><b><a href="http://www.project-open.net/api-doc/proc-view?version_id=@version_id@&amp;proc=@procedures.proc@">@procedures.proc@</a></b></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td>@procedures.first_sentence@&nbsp;</td>
  </tr>
  </multiple>
</table>
</blockquote>
</if>

<if @sql_files_p@>
<h2>SQL Files</h2>
<blockquote>
<table cellspacing="0" cellpadding="0">
  <multiple name="sql_files">
  <tr valign="top">
    <td><b><a href="http://www.project-open.net/api-doc/display-sql?package_key=@package_key@&amp;url=@sql_files.relative_path@&amp;version_id=@version_id@">@sql_files.path@</a></b></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </multiple>
</table>
</blockquote>
</if>

<if @content_p@>
<h2>Content Pages</h2>
<table cellspacing="0" cellpadding="0">
  <multiple name="content_pages">
  <tr valign="top">
    <if @content_pages.content_type@ eq "page">
      <td style="width:35%">@content_pages.indentation;noquote@
       <b><a href="http://www.project-open.net/api-doc/content-page-view?version_id=@version_id@&amp;path=@content_pages.full_path@">@content_pages.name@</a></b>
       <if @content_pages.type@ ne "">
         <a href="http://www.project-open.net/api-doc/type-view?type=@content_pages.type@"></a>
       </if>
      </td>
      <td>@content_pages.first_sentence@</td>
    </if>
    <if @content_pages.content_type@ eq "directory">
      <td>@content_pages.indentation;noquote@<b>@content_pages.name@/</b></td>
    </if>
  </tr>
  </multiple>
</table>
</if>

</if>