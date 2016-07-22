.class public Lcom/didi/common/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 273
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 274
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    .line 275
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_1
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_0

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_0

    .line 279
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 281
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static ToSBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "input"

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 259
    .local v0, c:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 260
    aget-char v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 261
    const/16 v2, 0x3000

    aput-char v2, v0, v1

    .line 259
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    aget-char v2, v0, v1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    .line 263
    aget-char v2, v0, v1

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 267
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static cleanPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "password"

    .prologue
    .line 183
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, ""

    .line 185
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
    .line 195
    invoke-virtual {p0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 196
    .local v6, tag:Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 197
    const/4 v5, 0x0

    .line 199
    .local v5, selectionTag:I
    :try_start_0
    check-cast v6, Ljava/lang/Integer;

    .end local v6           #tag:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 203
    invoke-virtual {p0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 204
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 218
    .end local v5           #selectionTag:I
    :goto_0
    return-void

    .line 200
    .restart local v5       #selectionTag:I
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 207
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v5           #selectionTag:I
    .restart local v6       #tag:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, password:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 209
    .local v4, selection:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 210
    .local v3, preLength:I
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->cleanPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    .local v0, cleanedLength:I
    sub-int v7, v3, v0

    sub-int/2addr v4, v7

    .line 213
    if-gez v4, :cond_1

    .line 214
    const/4 v4, 0x0

    .line 216
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static containIllegalChar(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 31
    const-string v0, ".*[`~!@#$%^&*+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]+.*"

    .line 32
    .local v0, regEx:Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static containIllegalCharCompany(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 36
    const-string v0, ".*[`~!@#$%^&*+=|{}\':;\',\\[\\]./?~\uff01@#\uffe5%\u2026\u2026&*+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]+.*"

    .line 37
    .local v0, regEx:Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static containIllegalCharUserDes(Ljava/lang/String;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 41
    const-string v0, ".*[`@#$%^&*+=|{}\'\'\\[\\].<>/@#\uffe5%\u2026\u2026&*\u2014\u2014+|{}\u3010\u3011]+.*"

    .line 42
    .local v0, regEx:Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 250
    :try_start_0
    sget-object v1, Lcom/didi/common/config/Configuration;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    :goto_0
    return-object v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 253
    const-string v1, ""

    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "first"
    .parameter "second"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v3, 0x0

    .line 79
    :goto_0
    return-object v3

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 72
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

    .line 70
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 79
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
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/didi/common/util/TextUtil;->getIdFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIdFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "ignoreTag"

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 92
    .restart local p0
    :cond_1
    const-string v4, ".jpg"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 93
    .local v2, lastIndex:I
    if-gez v2, :cond_2

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 95
    :cond_2
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 96
    .local v0, beginIndex:I
    const-string v4, "%2F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x3

    .line 97
    .local v3, slashIndex:I
    const-string v4, "%252F"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x5

    .line 98
    .local v1, finalSlashIndex:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 100
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getIdString(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "v"

    .prologue
    .line 241
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
    .line 135
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/common/util/TextUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 131
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "str"

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "arrayResId"

    .prologue
    .line 245
    invoke-static {p0}, Lcom/didi/common/helper/ResourcesHelper;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCoordinateEmpty(Ljava/lang/String;)Z
    .locals 5
    .parameter "l"

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 172
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    .line 51
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 55
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
    .line 237
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static paseLong(Ljava/lang/String;)J
    .locals 4
    .parameter "time"

    .prologue
    .line 307
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    const-wide/high16 v1, -0x8000

    .line 315
    :goto_0
    return-wide v1

    .line 309
    :cond_0
    const-wide/high16 v1, -0x8000

    .line 311
    .local v1, result:J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public static setPasswordFilter(Landroid/widget/EditText;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 226
    new-instance v0, Lcom/didi/common/util/TextUtil$1;

    invoke-direct {v0}, Lcom/didi/common/util/TextUtil$1;-><init>()V

    .line 233
    .local v0, lengthfilter:Landroid/text/InputFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 234
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "tv"
    .parameter "resId"

    .prologue
    .line 285
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    .line 286
    .local v0, color:I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    return-void
.end method

.method public static setTextColorList(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "tv"
    .parameter "resId"

    .prologue
    .line 290
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 291
    .local v0, colors:Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 292
    return-void
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static trimInner(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const/4 p0, 0x0

    .line 121
    .local v0, m:Ljava/util/regex/Matcher;
    .local v1, p:Ljava/util/regex/Pattern;
    :cond_0
    return-object p0

    .line 116
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    :cond_1
    const-string v2, "(\\s+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 117
    .restart local v1       #p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 118
    .restart local v0       #m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 301
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 302
    .local v0, df:Ljava/text/DecimalFormat;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 303
    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
