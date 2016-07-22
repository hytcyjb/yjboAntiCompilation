.class public Lcom/avos/avoscloud/AVRequestParams;
.super Ljava/lang/Object;
.source "AVRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C = null

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"


# instance fields
.field params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/AVRequestParams;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/avos/avoscloud/AVRequestParams;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVRequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 134
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    .line 140
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 141
    invoke-virtual {v0, p0, p1, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 142
    invoke-static/range {v0 .. v6}, Lcom/avos/avoscloud/AVRequestParams;->canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 143
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_1
    return-object v0

    .line 132
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/AVRequestParams;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Lcom/avos/avoscloud/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x25

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    if-ge p2, p3, :cond_7

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 157
    if-eqz p5, :cond_1

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    const/16 v1, 0xa

    if-eq v2, v1, :cond_0

    const/16 v1, 0xc

    if-eq v2, v1, :cond_0

    const/16 v1, 0xd

    if-ne v2, v1, :cond_1

    .line 155
    :cond_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 160
    :cond_1
    if-eqz p6, :cond_3

    const/16 v1, 0x2b

    if-ne v2, v1, :cond_3

    .line 162
    if-eqz p5, :cond_2

    const-string v1, "%20"

    :goto_2
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    :cond_2
    const-string v1, "%2B"

    goto :goto_2

    .line 163
    :cond_3
    const/16 v1, 0x20

    if-lt v2, v1, :cond_4

    const/16 v1, 0x7f

    if-ge v2, v1, :cond_4

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    if-ne v2, v5, :cond_6

    if-nez p5, :cond_6

    .line 168
    :cond_4
    if-nez v0, :cond_5

    .line 169
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    .line 171
    :cond_5
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 172
    :goto_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 174
    invoke-virtual {p0, v5}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 175
    sget-object v3, Lcom/avos/avoscloud/AVRequestParams;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 176
    sget-object v3, Lcom/avos/avoscloud/AVRequestParams;->HEX_DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_3

    .line 180
    :cond_6
    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    goto :goto_1

    .line 183
    :cond_7
    return-void
.end method


# virtual methods
.method protected getDumpQueryString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    if-lez v2, :cond_1

    .line 118
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->getParam()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    .line 67
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    if-lez v2, :cond_1

    .line 71
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;

    iget-object v0, v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->encodedParam:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWholeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-object p1

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    if-lez v2, :cond_1

    .line 91
    const/16 v1, 0x26

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;

    iget-object v0, v0, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->encodedParam:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avos/avoscloud/AVRequestParams;->params:Ljava/util/HashMap;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/avos/avoscloud/AVRequestParams;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;->getParameterValuePair(Ljava/lang/String;)Lcom/avos/avoscloud/AVRequestParams$ParameterValuePair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
