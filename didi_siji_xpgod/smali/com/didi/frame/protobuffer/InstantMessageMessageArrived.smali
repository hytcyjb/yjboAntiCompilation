.class public final Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
.super Lcom/squareup/wire/Message;
.source "InstantMessageMessageArrived.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$1;,
        Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MID:Ljava/lang/Long;

.field public static final DEFAULT_PRODUCT:Ljava/lang/Long;

.field public static final DEFAULT_SID:Ljava/lang/Long;


# instance fields
.field public final mid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final product:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->DEFAULT_SID:Ljava/lang/Long;

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->DEFAULT_MID:Ljava/lang/Long;

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->DEFAULT_PRODUCT:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 33
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->sid:Ljava/lang/Long;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->mid:Ljava/lang/Long;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;->product:Ljava/lang/Long;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;-><init>(Lcom/didi/frame/protobuffer/InstantMessageMessageArrived$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .parameter "sid"
    .parameter "mid"
    .parameter "product"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    .line 28
    iput-object p2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    .line 29
    iput-object p3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->product:Ljava/lang/Long;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;

    .line 42
    .local v0, o:Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->product:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->product:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 49
    iget v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->hashCode:I

    .line 50
    .local v0, result:I
    if-nez v0, :cond_1

    .line 51
    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->sid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 52
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->mid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 53
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->product:Ljava/lang/Long;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->product:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 54
    iput v0, p0, Lcom/didi/frame/protobuffer/InstantMessageMessageArrived;->hashCode:I

    .line 56
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0

    :cond_3
    move v2, v1

    .line 52
    goto :goto_1
.end method
