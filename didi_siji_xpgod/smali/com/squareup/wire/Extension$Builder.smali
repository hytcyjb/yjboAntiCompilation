.class public final Lcom/squareup/wire/Extension$Builder;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final datatype:Lcom/squareup/wire/Message$Datatype;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private label:Lcom/squareup/wire/Message$Label;

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private tag:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V
    .locals 2
    .parameter
    .parameter "datatype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    .local p1, extendedType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    .line 66
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 69
    iput-object p1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    .line 70
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    .line 71
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    .line 72
    iput-object p2, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter "datatype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    .local p1, extendedType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, messageType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/squareup/wire/Message;>;"
    .local p3, enumType:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/squareup/wire/ProtoEnum;>;"
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    .line 66
    iput-object v1, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 77
    iput-object p1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    .line 78
    iput-object p2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    .line 79
    iput-object p3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    .line 80
    iput-object p4, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method private validate()V
    .locals 3

    .prologue
    .line 120
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extendedType == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datatype == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    if-nez v0, :cond_3

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    iget v0, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    if-gtz v0, :cond_4

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v0, v1, :cond_6

    .line 136
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 137
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message w/o messageType or w/ enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v0, v1, :cond_8

    .line 140
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    if-nez v0, :cond_a

    .line 141
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Enum w/ messageType or w/o enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 145
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scalar w/ messageType or enumType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_a
    return-void
.end method


# virtual methods
.method public buildOptional()Lcom/squareup/wire/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    sget-object v0, Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 96
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public buildPacked()Lcom/squareup/wire/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    sget-object v0, Lcom/squareup/wire/Message$Label;->PACKED:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 114
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 115
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public buildRepeated()Lcom/squareup/wire/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    sget-object v0, Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 107
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 108
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public buildRequired()Lcom/squareup/wire/Extension;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Extension",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    sget-object v0, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    iput-object v0, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    .line 101
    invoke-direct {p0}, Lcom/squareup/wire/Extension$Builder;->validate()V

    .line 102
    new-instance v0, Lcom/squareup/wire/Extension;

    iget-object v1, p0, Lcom/squareup/wire/Extension$Builder;->extendedType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/squareup/wire/Extension$Builder;->messageType:Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/Extension$Builder;->enumType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    iget v5, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    iget-object v6, p0, Lcom/squareup/wire/Extension$Builder;->label:Lcom/squareup/wire/Message$Label;

    iget-object v7, p0, Lcom/squareup/wire/Extension$Builder;->datatype:Lcom/squareup/wire/Message$Datatype;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/squareup/wire/Extension$Builder;
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    iput-object p1, p0, Lcom/squareup/wire/Extension$Builder;->name:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setTag(I)Lcom/squareup/wire/Extension$Builder;
    .locals 0
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/squareup/wire/Extension$Builder;,"Lcom/squareup/wire/Extension$Builder<TT;TE;>;"
    iput p1, p0, Lcom/squareup/wire/Extension$Builder;->tag:I

    .line 90
    return-object p0
.end method
