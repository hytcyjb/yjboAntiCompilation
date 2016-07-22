.class final Lcom/squareup/wire/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# instance fields
.field final label:Lcom/squareup/protoparser/MessageType$Label;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/squareup/protoparser/MessageType$Label;)V
    .locals 0
    .parameter "name"
    .parameter "label"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/squareup/wire/FieldInfo;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/squareup/wire/FieldInfo;->label:Lcom/squareup/protoparser/MessageType$Label;

    .line 16
    return-void
.end method

.method public static isOptional(Lcom/squareup/protoparser/MessageType$Field;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/squareup/protoparser/MessageType$Field;->getLabel()Lcom/squareup/protoparser/MessageType$Label;

    move-result-object v0

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->OPTIONAL:Lcom/squareup/protoparser/MessageType$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPackableScalar(Lcom/squareup/protoparser/MessageType$Field;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/squareup/protoparser/MessageType$Field;->getType()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, type:Ljava/lang/String;
    invoke-static {v0}, Lcom/squareup/wire/TypeInfo;->isScalar(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bytes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPacked(Lcom/squareup/protoparser/MessageType$Field;Z)Z
    .locals 1
    .parameter "field"
    .parameter "isEnum"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/squareup/protoparser/MessageType$Field;->isPacked()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/squareup/wire/FieldInfo;->isPackableScalar(Lcom/squareup/protoparser/MessageType$Field;)Z

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

.method public static isRepeated(Lcom/squareup/protoparser/MessageType$Field;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/squareup/protoparser/MessageType$Field;->getLabel()Lcom/squareup/protoparser/MessageType$Label;

    move-result-object v0

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->REPEATED:Lcom/squareup/protoparser/MessageType$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRequired(Lcom/squareup/protoparser/MessageType$Field;)Z
    .locals 2
    .parameter "field"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/squareup/protoparser/MessageType$Field;->getLabel()Lcom/squareup/protoparser/MessageType$Label;

    move-result-object v0

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->REQUIRED:Lcom/squareup/protoparser/MessageType$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isRepeated()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/wire/FieldInfo;->label:Lcom/squareup/protoparser/MessageType$Label;

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->REPEATED:Lcom/squareup/protoparser/MessageType$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
