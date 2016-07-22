.class Lcom/didi/beatles/map/BtsMapUserMarker$1;
.super Ljava/lang/Object;
.source "BtsMapUserMarker.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/map/BtsMapUserMarker;->updateUserPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsMapUserMarker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    iput-object p2, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bit"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtsBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    #setter for: Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$002(Lcom/didi/beatles/map/BtsMapUserMarker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    iget-object v1, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->val$url:Ljava/lang/String;

    #setter for: Lcom/didi/beatles/map/BtsMapUserMarker;->mUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$102(Lcom/didi/beatles/map/BtsMapUserMarker;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    #getter for: Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;
    invoke-static {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$200(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    #getter for: Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;
    invoke-static {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$200(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    #getter for: Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/didi/beatles/map/BtsMapUserMarker;->access$000(Lcom/didi/beatles/map/BtsMapUserMarker;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker$1;->this$0:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->showInfoWindow()V

    .line 112
    return-void
.end method
