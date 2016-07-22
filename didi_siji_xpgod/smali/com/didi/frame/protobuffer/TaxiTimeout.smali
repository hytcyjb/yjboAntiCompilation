.class public final Lcom/didi/frame/protobuffer/TaxiTimeout;
.super Lcom/squareup/wire/Message;
.source "TaxiTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/TaxiTimeout$1;,
        Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONSULT:Ljava/lang/Integer;

.field public static final DEFAULT_OSPREYPK:Ljava/lang/Integer;

.field public static final DEFAULT_STRIVE:Ljava/lang/Integer;

.field public static final DEFAULT_STRIVE4LOOK:Ljava/lang/Integer;

.field public static final DEFAULT_WAITROB:Ljava/lang/Integer;

.field public static final DEFAULT_WAITROBOB4LOOK:Ljava/lang/Integer;


# instance fields
.field public final consult:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ospreyPK:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final strive:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final strive4look:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final waitRob:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final waitRobob4look:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->DEFAULT_STRIVE:Ljava/lang/Integer;

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->DEFAULT_CONSULT:Ljava/lang/Integer;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->DEFAULT_WAITROB:Ljava/lang/Integer;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->DEFAULT_OSPREYPK:Ljava/lang/Integer;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->DEFAULT_STRIVE4LOOK:Ljava/lang/Integer;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->DEFAULT_WAITROBOB4LOOK:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 65
    iget-object v1, p1, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->strive:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->consult:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->waitRob:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->ospreyPK:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->strive4look:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->waitRobob4look:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/protobuffer/TaxiTimeout;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/TaxiTimeout;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;Lcom/didi/frame/protobuffer/TaxiTimeout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/TaxiTimeout;-><init>(Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "strive"
    .parameter "consult"
    .parameter "waitRob"
    .parameter "ospreyPK"
    .parameter "strive4look"
    .parameter "waitRobob4look"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive:Ljava/lang/Integer;

    .line 57
    iput-object p2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->consult:Ljava/lang/Integer;

    .line 58
    iput-object p3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRob:Ljava/lang/Integer;

    .line 59
    iput-object p4, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->ospreyPK:Ljava/lang/Integer;

    .line 60
    iput-object p5, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive4look:Ljava/lang/Integer;

    .line 61
    iput-object p6, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRobob4look:Ljava/lang/Integer;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/didi/frame/protobuffer/TaxiTimeout;

    .line 74
    .local v0, o:Lcom/didi/frame/protobuffer/TaxiTimeout;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTimeout;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->consult:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->consult:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTimeout;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRob:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRob:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTimeout;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->ospreyPK:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->ospreyPK:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTimeout;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive4look:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive4look:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTimeout;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRobob4look:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRobob4look:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/TaxiTimeout;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 84
    iget v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->hashCode:I

    .line 85
    .local v0, result:I
    if-nez v0, :cond_1

    .line 86
    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 87
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->consult:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->consult:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 88
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRob:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRob:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 89
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->ospreyPK:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->ospreyPK:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 90
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive4look:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive4look:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 91
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRobob4look:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRobob4look:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 92
    iput v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout;->hashCode:I

    .line 94
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 86
    goto :goto_0

    :cond_3
    move v2, v1

    .line 87
    goto :goto_1

    :cond_4
    move v2, v1

    .line 88
    goto :goto_2

    :cond_5
    move v2, v1

    .line 89
    goto :goto_3

    :cond_6
    move v2, v1

    .line 90
    goto :goto_4
.end method
