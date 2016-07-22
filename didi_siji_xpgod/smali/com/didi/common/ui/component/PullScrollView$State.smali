.class final enum Lcom/didi/common/ui/component/PullScrollView$State;
.super Ljava/lang/Enum;
.source "PullScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/PullScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/ui/component/PullScrollView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/ui/component/PullScrollView$State;

.field public static final enum DOWN:Lcom/didi/common/ui/component/PullScrollView$State;

.field public static final enum NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

.field public static final enum UP:Lcom/didi/common/ui/component/PullScrollView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/didi/common/ui/component/PullScrollView$State;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/ui/component/PullScrollView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->UP:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 73
    new-instance v0, Lcom/didi/common/ui/component/PullScrollView$State;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/ui/component/PullScrollView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->DOWN:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 75
    new-instance v0, Lcom/didi/common/ui/component/PullScrollView$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/ui/component/PullScrollView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/common/ui/component/PullScrollView$State;

    sget-object v1, Lcom/didi/common/ui/component/PullScrollView$State;->UP:Lcom/didi/common/ui/component/PullScrollView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/ui/component/PullScrollView$State;->DOWN:Lcom/didi/common/ui/component/PullScrollView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/ui/component/PullScrollView$State;->NORMAL:Lcom/didi/common/ui/component/PullScrollView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->$VALUES:[Lcom/didi/common/ui/component/PullScrollView$State;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/ui/component/PullScrollView$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/didi/common/ui/component/PullScrollView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/PullScrollView$State;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/ui/component/PullScrollView$State;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/didi/common/ui/component/PullScrollView$State;->$VALUES:[Lcom/didi/common/ui/component/PullScrollView$State;

    invoke-virtual {v0}, [Lcom/didi/common/ui/component/PullScrollView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/ui/component/PullScrollView$State;

    return-object v0
.end method
