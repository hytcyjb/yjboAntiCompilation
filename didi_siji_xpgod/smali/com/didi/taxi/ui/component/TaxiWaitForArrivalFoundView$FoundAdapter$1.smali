.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFoundView.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiFoundHelper$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;

.field final synthetic val$imgIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter$1;->this$1:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter;

    iput-object p2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter$1;->val$imgIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFoundView$FoundAdapter$1;->val$imgIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    return-void
.end method
