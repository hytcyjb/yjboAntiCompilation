.class public final enum Lcom/didi/common/model/ExternalData$Source;
.super Ljava/lang/Enum;
.source "ExternalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/model/ExternalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/model/ExternalData$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/model/ExternalData$Source;

.field public static final enum HUAWEI:Lcom/didi/common/model/ExternalData$Source;

.field public static final enum SAMSUNG:Lcom/didi/common/model/ExternalData$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/didi/common/model/ExternalData$Source;

    const-string v1, "HUAWEI"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/model/ExternalData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/model/ExternalData$Source;->HUAWEI:Lcom/didi/common/model/ExternalData$Source;

    new-instance v0, Lcom/didi/common/model/ExternalData$Source;

    const-string v1, "SAMSUNG"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/model/ExternalData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/model/ExternalData$Source;->SAMSUNG:Lcom/didi/common/model/ExternalData$Source;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/didi/common/model/ExternalData$Source;

    sget-object v1, Lcom/didi/common/model/ExternalData$Source;->HUAWEI:Lcom/didi/common/model/ExternalData$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/model/ExternalData$Source;->SAMSUNG:Lcom/didi/common/model/ExternalData$Source;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/common/model/ExternalData$Source;->$VALUES:[Lcom/didi/common/model/ExternalData$Source;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/model/ExternalData$Source;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/didi/common/model/ExternalData$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/ExternalData$Source;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/model/ExternalData$Source;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/didi/common/model/ExternalData$Source;->$VALUES:[Lcom/didi/common/model/ExternalData$Source;

    invoke-virtual {v0}, [Lcom/didi/common/model/ExternalData$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/model/ExternalData$Source;

    return-object v0
.end method
