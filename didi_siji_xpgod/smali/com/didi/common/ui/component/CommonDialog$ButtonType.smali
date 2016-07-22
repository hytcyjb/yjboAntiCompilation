.class public final enum Lcom/didi/common/ui/component/CommonDialog$ButtonType;
.super Ljava/lang/Enum;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/ui/component/CommonDialog$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/ui/component/CommonDialog$ButtonType;

.field public static final enum ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

.field public static final enum THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

.field public static final enum TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    .line 145
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    .line 147
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    .line 141
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->$VALUES:[Lcom/didi/common/ui/component/CommonDialog$ButtonType;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/ui/component/CommonDialog$ButtonType;
    .locals 1
    .parameter "name"

    .prologue
    .line 141
    const-class v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/ui/component/CommonDialog$ButtonType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->$VALUES:[Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0}, [Lcom/didi/common/ui/component/CommonDialog$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    return-object v0
.end method
