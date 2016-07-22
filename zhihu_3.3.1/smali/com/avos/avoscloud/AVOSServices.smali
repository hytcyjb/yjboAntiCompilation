.class public final enum Lcom/avos/avoscloud/AVOSServices;
.super Ljava/lang/Enum;
.source "AVOSServices.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/AVOSServices;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVOSServices;

.field public static final enum FUNCTION_SERVICE:Lcom/avos/avoscloud/AVOSServices;

.field public static final enum STATISTICS_SERVICE:Lcom/avos/avoscloud/AVOSServices;

.field public static final enum STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;


# instance fields
.field private service:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/avos/avoscloud/AVOSServices;

    const-string v1, "STORAGE_SERVICE"

    const-string v2, "avoscloud-storage"

    invoke-direct {v0, v1, v3, v2}, Lcom/avos/avoscloud/AVOSServices;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    new-instance v0, Lcom/avos/avoscloud/AVOSServices;

    const-string v1, "STATISTICS_SERVICE"

    const-string v2, "avoscloud-statistics"

    invoke-direct {v0, v1, v4, v2}, Lcom/avos/avoscloud/AVOSServices;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSServices;->STATISTICS_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    .line 5
    new-instance v0, Lcom/avos/avoscloud/AVOSServices;

    const-string v1, "FUNCTION_SERVICE"

    const-string v2, "avoscloud-function"

    invoke-direct {v0, v1, v5, v2}, Lcom/avos/avoscloud/AVOSServices;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVOSServices;->FUNCTION_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avos/avoscloud/AVOSServices;

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STORAGE_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->STATISTICS_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/AVOSServices;->FUNCTION_SERVICE:Lcom/avos/avoscloud/AVOSServices;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avos/avoscloud/AVOSServices;->$VALUES:[Lcom/avos/avoscloud/AVOSServices;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/avos/avoscloud/AVOSServices;->service:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVOSServices;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/avos/avoscloud/AVOSServices;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVOSServices;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/AVOSServices;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/avos/avoscloud/AVOSServices;->$VALUES:[Lcom/avos/avoscloud/AVOSServices;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVOSServices;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVOSServices;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/avos/avoscloud/AVOSServices;->service:Ljava/lang/String;

    return-object v0
.end method
