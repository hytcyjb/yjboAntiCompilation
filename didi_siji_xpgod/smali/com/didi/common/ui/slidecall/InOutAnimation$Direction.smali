.class public final enum Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;
.super Ljava/lang/Enum;
.source "InOutAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/slidecall/InOutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

.field public static final enum IN:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

.field public static final enum OUT:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->IN:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    new-instance v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->OUT:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    sget-object v1, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->IN:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->OUT:Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->$VALUES:[Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->$VALUES:[Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    invoke-virtual {v0}, [Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/ui/slidecall/InOutAnimation$Direction;

    return-object v0
.end method
