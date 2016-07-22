.class public final enum Lcom/didi/common/download/DownloadService$DownloadState;
.super Ljava/lang/Enum;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/download/DownloadService$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/download/DownloadService$DownloadState;

.field public static final enum DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

.field public static final enum IDLE:Lcom/didi/common/download/DownloadService$DownloadState;

.field public static final enum RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

.field public static final enum STOP:Lcom/didi/common/download/DownloadService$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/didi/common/download/DownloadService$DownloadState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/download/DownloadService$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->IDLE:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 47
    new-instance v0, Lcom/didi/common/download/DownloadService$DownloadState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/download/DownloadService$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 49
    new-instance v0, Lcom/didi/common/download/DownloadService$DownloadState;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/download/DownloadService$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 51
    new-instance v0, Lcom/didi/common/download/DownloadService$DownloadState;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/didi/common/download/DownloadService$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->IDLE:Lcom/didi/common/download/DownloadService$DownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->$VALUES:[Lcom/didi/common/download/DownloadService$DownloadState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/download/DownloadService$DownloadState;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/didi/common/download/DownloadService$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/download/DownloadService$DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/download/DownloadService$DownloadState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->$VALUES:[Lcom/didi/common/download/DownloadService$DownloadState;

    invoke-virtual {v0}, [Lcom/didi/common/download/DownloadService$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/download/DownloadService$DownloadState;

    return-object v0
.end method
