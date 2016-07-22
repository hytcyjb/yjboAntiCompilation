.class public final Lcom/didi/frame/protobuffer/FeeBottom;
.super Lcom/squareup/wire/Message;
.source "FeeBottom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/FeeBottom$1;,
        Lcom/didi/frame/protobuffer/FeeBottom$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FEE_LABEL:Ljava/lang/String; = ""


# instance fields
.field public final fee_label:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/FeeBottom$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 25
    iget-object v0, p1, Lcom/didi/frame/protobuffer/FeeBottom$Builder;->fee_label:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/FeeBottom;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/FeeBottom;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/FeeBottom$Builder;Lcom/didi/frame/protobuffer/FeeBottom$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/FeeBottom;-><init>(Lcom/didi/frame/protobuffer/FeeBottom$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fee_label"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/didi/frame/protobuffer/FeeBottom;->fee_label:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 31
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 33
    .end local p1
    :goto_0
    return v0

    .line 32
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/FeeBottom;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/FeeBottom;->fee_label:Ljava/lang/String;

    check-cast p1, Lcom/didi/frame/protobuffer/FeeBottom;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/FeeBottom;->fee_label:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/FeeBottom;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lcom/didi/frame/protobuffer/FeeBottom;->hashCode:I

    .line 39
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/FeeBottom;->fee_label:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/FeeBottom;->fee_label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/FeeBottom;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
