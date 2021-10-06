Notqmail patch checker
======================
For maintaining
[patch](https://github.com/notqmail/notqmail/wiki/Patches)
compatibility and still permit the source to evolve, this Makefile
builds notqmail for each combination of patch and branch below.

<table>
	<tr>
		<th>patch</th>
		<th><a href=/8c53cd40a3329d682a905decb1f8734fa1ba2e9a>master</a></th>
		<th><a href=/e77f33bd5f614e967b0716a72dd706462d36a477>1.08</a></th>
		<th><a href=/aab15b1fea8a6c48953bf152a334d6a1840184c3>1.07</a></th>
	</tr>
	<tr>
		<td>badmailfrom-wildcard</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-badmailfrom-wildcard.log>ok</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-badmailfrom-wildcard.log>ok</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-badmailfrom-wildcard.log>ok</a></td>
	</tr>
	<tr>
		<td>badmailfrom-x-relayclient</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-badmailfrom-x-relayclient.log>ok</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-badmailfrom-x-relayclient.log>ok</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-badmailfrom-x-relayclient.log>ok</a></td>
	</tr>
	<tr>
		<td>big-concurrency</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-big-concurrency.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-big-concurrency.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-big-concurrency.log>error</a></td>
	</tr>
	<tr>
		<td>big-todo</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-big-todo.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-big-todo.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-big-todo.log>ok</a></td>
	</tr>
	<tr>
		<td>ext-todo</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-ext-todo.log>ok</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-ext-todo.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-ext-todo.log>error</a></td>
	</tr>
	<tr>
		<td>netqmail-spp</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-netqmail-spp.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-netqmail-spp.log>ok</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-netqmail-spp.log>ok</a></td>
	</tr>
	<tr>
		<td>rcptcheck</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-rcptcheck.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-rcptcheck.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-rcptcheck.log>ok</a></td>
	</tr>
	<tr>
		<td>smtp-auth</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtp-auth.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-smtp-auth.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-smtp-auth.log>error</a></td>
	</tr>
	<tr>
		<td>smtp-tls</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtp-tls.log>ok</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-smtp-tls.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-smtp-tls.log>error</a></td>
	</tr>
	<tr>
		<td>smtpd-logging</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtpd-logging.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-smtpd-logging.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-smtpd-logging.log>ok</a></td>
	</tr>
	<tr>
		<td>smtpd-spf</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-smtpd-spf.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-smtpd-spf.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-smtpd-spf.log>error</a></td>
	</tr>
	<tr>
		<td>spp-smtpauth-eh</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp-smtpauth-eh.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-spp-smtpauth-eh.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-spp-smtpauth-eh.log>error</a></td>
	</tr>
	<tr>
		<td>spp-smtpauth-tls</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp-smtpauth-tls.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-spp-smtpauth-tls.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-spp-smtpauth-tls.log>error</a></td>
	</tr>
	<tr>
		<td>spp-smtpauth</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp-smtpauth.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-spp-smtpauth.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-spp-smtpauth.log>error</a></td>
	</tr>
	<tr>
		<td>spp</td>
		<td><a href=log/8c53cd40a3329d682a905decb1f8734fa1ba2e9a-spp.log>error</a></td>
		<td><a href=log/e77f33bd5f614e967b0716a72dd706462d36a477-spp.log>error</a></td>
		<td><a href=log/aab15b1fea8a6c48953bf152a334d6a1840184c3-spp.log>error</a></td>
	</tr>
</table>

Testing an individual branch/patch combo
----------------------------------------
```
make BRANCH=refactoring PATCH=big-todo
```

This will produce log result in `log/$commit-big-todo.log`.

Testing all patches
-------------------
```
make patches BRANCH=refactoring
```

For instance, after a commit, for checking if patches still
apply or if they need a rework.

Testing all branches
--------------------
```
make branches PATCH=big-todo
```

For instance, after changing a patch to check if it now works
better on notqmail.

Branches tested are listed in `conf-branch`.

Testing all patches and all branches
------------------------------------
```
make everything
```

Checking every merge request
----------------------------
```
make brokemaster BRANCH=refactoring
```

This can be used in a script that automatically runs on merge request.
This will return an error only if the current branch broke more patches
than what master did already.
