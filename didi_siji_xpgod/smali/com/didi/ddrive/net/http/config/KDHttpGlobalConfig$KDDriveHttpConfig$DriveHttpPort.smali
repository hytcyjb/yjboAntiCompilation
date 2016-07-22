.class Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveHttpConfig$DriveHttpPort;
.super Ljava/lang/Object;
.source "KDHttpGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/config/KDHttpGlobalConfig$KDDriveHttpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DriveHttpPort"
.end annotation


# static fields
.field public static final ONLINE:I = 0x50

.field public static final ONLINE_HTTPS:I = 0x1bb

.field public static final STABLE:I = 0x1fa2

.field public static final STABLE_HTTPS:I = 0x232a

.field public static final TEST:I = 0x2328


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
