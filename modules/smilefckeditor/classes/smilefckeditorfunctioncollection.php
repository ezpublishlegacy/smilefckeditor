<?php
//
// Copyright (C) 2005 Smile. All rights reserved.
//
// Authors:
//   Emmanuel Saracco <emmanuel.saracco@smile.fr>
//   Julian Roblin <julian.roblin@smile.fr>
//
// This source file is part of the eZ publish (tm) Open Source Content
// Management System.
//
// This file may be distributed and/or modified under the terms of the
// "GNU General Public License" version 2 as published by the Free
// Software Foundation and appearing in the file LICENSE included in
// the packaging of this file.
//
// Licencees holding a valid "eZ publish professional licence" version 2
// may use this file in accordance with the "eZ publish professional licence"
// version 2 Agreement provided with the Software.
//
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING
// THE WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE.
//
// The "eZ publish professional licence" version 2 is available at
// http://ez.no/ez_publish/licences/professional/ and in the file
// PROFESSIONAL_LICENCE included in the packaging of this file.
// For pricing of this licence please contact us via e-mail to licence@ez.no.
// Further contact information is available at http://ez.no/company/contact/.
//
// The "GNU General Public License" (GPL) is available at
// http://www.gnu.org/copyleft/gpl.html.
//
// Contact licence@ez.no if any conditions of this licencing isn't clear to
// you.
//

  include_once( 'access.php' );
  include_once ('kernel/classes/ezcontentobjecttreenode.php');
  include_once ('smilefckeditordb.php');
  include_once ('extension/smilefckeditor/modules/smilefckeditor/functions.php');


  class smileFCKEditorFunctionCollection
  {
    var $db = null;
    var $ini = null;
    var $siteAccessBackups = array ();

    function smileFCKEditorFunctionCollection ()
    {
      if (!$this->db) $this->db = new smileFCKEditorDB ();
      if (!$this->ini) $this->ini =& eZINI::instance();
    }
		
		function smileGetRelatedObjects($object, $version)
		{		
			$result = $this->db->smileGetRelatedObjects($object, $version) ;
			
			return array('result' => $result) ;
		}
  }
?>
