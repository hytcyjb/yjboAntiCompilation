.class public final Lcom/didi/frame/protobuffer/ConsultInfo;
.super Lcom/squareup/wire/Message;
.source "ConsultInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConsultInfo$1;,
        Lcom/didi/frame/protobuffer/ConsultInfo$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONSULT_MIN:Ljava/lang/String; = ""

.field public static final DEFAULT_DRIVER_TIPS:Ljava/lang/String; = ""

.field public static final DEFAULT_SYSTEM_TIPS:Ljava/lang/String; = ""


# instance fields
.field public final consult_min:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final driver_tips:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final system_tips:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/ConsultInfo$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 42
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->consult_min:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->driver_tips:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->system_tips:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/ConsultInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConsultInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConsultInfo$Builder;Lcom/didi/frame/protobuffer/ConsultInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConsultInfo;-><init>(Lcom/didi/frame/protobuffer/ConsultInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "consult_min"
    .parameter "driver_tips"
    .parameter "system_tips"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/ConsultInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/didi/frame/protobuffer/ConsultInfo;

    .line 51
    .local v0, o:Lcom/didi/frame/protobuffer/ConsultInfo;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConsultInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConsultInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/ConsultInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    iget v0, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->hashCode:I

    .line 59
    .local v0, result:I
    if-nez v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 62
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 63
    iput v0, p0, Lcom/didi/frame/protobuffer/ConsultInfo;->hashCode:I

    .line 65
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0

    :cond_3
    move v2, v1

    .line 61
    goto :goto_1
.end method
