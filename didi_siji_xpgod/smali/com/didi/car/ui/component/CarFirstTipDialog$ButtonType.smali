.class public final enum Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;
.super Ljava/lang/Enum;
.source "CarFirstTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarFirstTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

.field public static final enum ONE:Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;->ONE:Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    sget-object v1, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;->ONE:Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;->$VALUES:[Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    return-object v0
.end method

.method public static values()[Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;->$VALUES:[Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    invoke-virtual {v0}, [Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    return-object v0
.end method
