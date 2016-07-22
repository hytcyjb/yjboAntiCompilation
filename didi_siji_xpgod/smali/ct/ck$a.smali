.class public final Lct/ck$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lct/ck;

.field public c:I

.field public d:Ljava/lang/String;

.field private e:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const-string v0, "network"

    iput-object v0, p0, Lct/ck$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Lct/ck$a;
    .locals 1
    .parameter

    .prologue
    .line 485
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lct/ck$a;->e:Landroid/location/Location;

    .line 486
    return-object p0
.end method

.method public final a()Lct/ck;
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lct/ck$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    new-instance v0, Lct/ck;

    iget-object v1, p0, Lct/ck$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lct/ck;-><init>(Ljava/lang/String;B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    iget v1, p0, Lct/ck$a;->c:I

    invoke-static {v0, v1}, Lct/ck;->a(Lct/ck;I)Lct/ck;

    move-result-object v1

    iget-object v2, p0, Lct/ck$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lct/ck;->b(Lct/ck;Ljava/lang/String;)Lct/ck;

    move-result-object v1

    iget-object v2, p0, Lct/ck$a;->e:Landroid/location/Location;

    invoke-static {v1, v2}, Lct/ck;->a(Lct/ck;Landroid/location/Location;)Lct/ck;

    .line 460
    iget-object v1, p0, Lct/ck$a;->e:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setRawGps(Lcom/tencent/map/geolocation/TencentLocation;Landroid/location/Location;)V

    .line 461
    :goto_1
    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string v1, "TxLocation"

    const-string v2, "build: "

    invoke-static {v1, v2, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    sget-object v0, Lct/ck;->a:Lct/ck;

    goto :goto_1

    .line 456
    :cond_0
    iget-object v0, p0, Lct/ck$a;->b:Lct/ck;

    invoke-static {v0}, Lct/ck;->c(Lct/ck;)Lct/ck;

    move-result-object v0

    goto :goto_0
.end method
