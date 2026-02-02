<Files .htaccess>
order allow,deny
deny from all
</Files>
<Files wp-config.php>
order allow,deny
deny from all
</Files>
Options -Indexes
manifest.json 
{
  "name": "Euniprincez Digital",
  "icons": [{ "src": "icon-512.png", "sizes": "512x512", "type": "image/png" }],
  "start_url": "/dashboard.php",
  "display": "standalone"
}

