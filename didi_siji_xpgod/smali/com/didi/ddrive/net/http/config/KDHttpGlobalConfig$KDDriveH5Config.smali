.class Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveH5Config;
.super Ljava/lang/Object;
.source "KDHttpGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KDDriveH5Config"
.end annotation


# static fields
.field public static ONLINE:Ljava/lang/String;

.field public static STABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "http://page.kuaidadi.com"

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveH5Config;->ONLINE:Ljava/lang/String;

    .line 49
    const-string v0, "http://test.kuaidadi.com:9005"

    sput-object v0, Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveH5Config;->STABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
