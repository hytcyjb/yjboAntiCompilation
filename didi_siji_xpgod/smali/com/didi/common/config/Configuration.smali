.class public Lcom/didi/common/config/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static AVATAR_RADIUS:I = 0x0

.field public static CHARSET_ENCODING:Ljava/lang/String; = null

.field public static final PRODUCT_ID_DRIVE:I = 0x105


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x5

    sput v0, Lcom/didi/common/config/Configuration;->AVATAR_RADIUS:I

    .line 14
    const-string v0, "UTF-8"

    sput-object v0, Lcom/didi/common/config/Configuration;->CHARSET_ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
