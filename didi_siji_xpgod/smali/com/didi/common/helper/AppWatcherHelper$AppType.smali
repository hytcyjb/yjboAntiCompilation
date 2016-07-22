.class public final enum Lcom/didi/common/helper/AppWatcherHelper$AppType;
.super Ljava/lang/Enum;
.source "AppWatcherHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/AppWatcherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/helper/AppWatcherHelper$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/helper/AppWatcherHelper$AppType;

.field public static final enum DEFAULT:Lcom/didi/common/helper/AppWatcherHelper$AppType;

.field public static final enum INSTALL:Lcom/didi/common/helper/AppWatcherHelper$AppType;

.field public static final enum OPEN:Lcom/didi/common/helper/AppWatcherHelper$AppType;

.field public static final enum UNINSTALL:Lcom/didi/common/helper/AppWatcherHelper$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/helper/AppWatcherHelper$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;->DEFAULT:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    new-instance v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/helper/AppWatcherHelper$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;->INSTALL:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    new-instance v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/helper/AppWatcherHelper$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;->UNINSTALL:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    new-instance v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v5}, Lcom/didi/common/helper/AppWatcherHelper$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;->OPEN:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/common/helper/AppWatcherHelper$AppType;

    sget-object v1, Lcom/didi/common/helper/AppWatcherHelper$AppType;->DEFAULT:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/helper/AppWatcherHelper$AppType;->INSTALL:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/helper/AppWatcherHelper$AppType;->UNINSTALL:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/common/helper/AppWatcherHelper$AppType;->OPEN:Lcom/didi/common/helper/AppWatcherHelper$AppType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;->$VALUES:[Lcom/didi/common/helper/AppWatcherHelper$AppType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/helper/AppWatcherHelper$AppType;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/helper/AppWatcherHelper$AppType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/didi/common/helper/AppWatcherHelper$AppType;->$VALUES:[Lcom/didi/common/helper/AppWatcherHelper$AppType;

    invoke-virtual {v0}, [Lcom/didi/common/helper/AppWatcherHelper$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/helper/AppWatcherHelper$AppType;

    return-object v0
.end method
