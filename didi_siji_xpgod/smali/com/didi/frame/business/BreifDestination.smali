.class public final enum Lcom/didi/frame/business/BreifDestination;
.super Ljava/lang/Enum;
.source "BreifDestination.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/business/BreifDestination;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/business/BreifDestination;

.field public static final enum Company:Lcom/didi/frame/business/BreifDestination;

.field public static final enum Home:Lcom/didi/frame/business/BreifDestination;

.field public static final enum None:Lcom/didi/frame/business/BreifDestination;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/didi/frame/business/BreifDestination;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/didi/frame/business/BreifDestination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/BreifDestination;->None:Lcom/didi/frame/business/BreifDestination;

    new-instance v0, Lcom/didi/frame/business/BreifDestination;

    const-string v1, "Home"

    invoke-direct {v0, v1, v3}, Lcom/didi/frame/business/BreifDestination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/BreifDestination;->Home:Lcom/didi/frame/business/BreifDestination;

    new-instance v0, Lcom/didi/frame/business/BreifDestination;

    const-string v1, "Company"

    invoke-direct {v0, v1, v4}, Lcom/didi/frame/business/BreifDestination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/frame/business/BreifDestination;->Company:Lcom/didi/frame/business/BreifDestination;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/frame/business/BreifDestination;

    sget-object v1, Lcom/didi/frame/business/BreifDestination;->None:Lcom/didi/frame/business/BreifDestination;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/business/BreifDestination;->Home:Lcom/didi/frame/business/BreifDestination;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/business/BreifDestination;->Company:Lcom/didi/frame/business/BreifDestination;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/frame/business/BreifDestination;->$VALUES:[Lcom/didi/frame/business/BreifDestination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(I)Lcom/didi/frame/business/BreifDestination;
    .locals 1
    .parameter "index"

    .prologue
    .line 13
    invoke-static {}, Lcom/didi/frame/business/BreifDestination;->values()[Lcom/didi/frame/business/BreifDestination;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/business/BreifDestination;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/didi/frame/business/BreifDestination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/business/BreifDestination;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/business/BreifDestination;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/didi/frame/business/BreifDestination;->$VALUES:[Lcom/didi/frame/business/BreifDestination;

    invoke-virtual {v0}, [Lcom/didi/frame/business/BreifDestination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/business/BreifDestination;

    return-object v0
.end method
