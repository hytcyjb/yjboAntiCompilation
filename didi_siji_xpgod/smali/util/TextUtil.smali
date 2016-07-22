.class public Lutil/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "password"

    .prologue
    .line 143
    invoke-static {p0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[^\\x00-\\xff]*|\\s*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static cleanPasswordEditText(Landroid/widget/EditText;Landroid/text/TextWatcher;)V
    .locals 8
    .parameter "editText"
    .parameter "textWatcher"

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 156
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 157
    const/4 v5, 0x0

    .line 159
    .local v5, selectionTag:I
    :try_start_0
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #tag:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 163
    invoke-virtual {p0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 164
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 178
    .end local v5           #selectionTag:I
    :goto_0
    return-void

    .line 160
    .restart local v5       #selectionTag:I
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v5           #selectionTag:I
    .restart local v6       #tag:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, password:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 169
    .local v4, selection:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 170
    .local v3, preLength:I
    invoke-static {v2}, Lutil/TextUtil;->cleanPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 172
    .local v0, cleanedLength:I
    sub-int v7, v3, v0

    sub-int/2addr v4, v7

    .line 173
    if-gez v4, :cond_1

    .line 174
    const/4 v4, 0x0

    .line 176
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "first"
    .parameter "second"

    .prologue
    .line 121
    invoke-static {p0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v3, 0x0

    .line 54
    :goto_0
    return-object v3

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 47
    .local v1, c:C
    const/16 v3, 0x2f

    if-eq v1, v3, :cond_1

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3f

    if-eq v1, v3, :cond_1

    const/16 v3, 0x22

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x7c

    if-ne v1, v3, :cond_2

    .line 45
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 54
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lutil/TextUtil;->getIdFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "ignoreTag"

    .prologue
    .line 65
    invoke-static {p0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 67
    .restart local p0
    :cond_1
    const-string v4, ".jpg"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, lastIndex:I
    if-gez v2, :cond_2

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 70
    :cond_2
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 71
    .local v0, beginIndex:I
    const-string v4, "%2F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x3

    .line 72
    .local v3, slashIndex:I
    const-string v4, "%252F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x5

    .line 73
    .local v1, finalSlashIndex:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getIdString(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "v"

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resIdX"
    .parameter "resIdY"

    .prologue
    .line 99
    invoke-static {p1}, Lutil/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lutil/TextUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 95
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "str"

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "arrayResId"

    .prologue
    .line 205
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCoordinateEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "l"

    .prologue
    const/4 v0, 0x1

    .line 128
    if-nez p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    .line 26
    if-nez p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .parameter "phone"

    .prologue
    .line 197
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static setPasswordFilter(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 186
    new-instance v0, Lutil/TextUtil$1;

    invoke-direct {v0}, Lutil/TextUtil$1;-><init>()V

    .line 193
    .local v0, lengthfilter:Landroid/text/InputFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 194
    return-void
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 83
    invoke-static {p0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
