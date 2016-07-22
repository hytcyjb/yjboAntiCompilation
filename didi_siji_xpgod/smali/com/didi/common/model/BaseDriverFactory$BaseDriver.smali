.class public Lcom/didi/common/model/BaseDriverFactory$BaseDriver;
.super Ljava/lang/Object;
.source "BaseDriverFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/model/BaseDriverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseDriver"
.end annotation


# instance fields
.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lat:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lng:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lat:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lng:Ljava/lang/String;

    .line 60
    return-void
.end method
