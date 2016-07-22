.class final Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;
.super Ljava/lang/RuntimeException;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/he;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    const-string v0, "Chain of Causes for CompositeException In Order Received =>"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/he$a;->a:Ljava/lang/String;

    return-object v0
.end method
