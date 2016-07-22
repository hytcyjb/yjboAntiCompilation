.class Lcom/didi/frame/switcher/SwitcherItem$1;
.super Ljava/lang/Object;
.source "SwitcherItem.java"

# interfaces
.implements Lcom/didi/common/cache/ImageWorker$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherItem;->setIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/switcher/SwitcherItem;


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/SwitcherItem;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherItem$1;->this$0:Lcom/didi/frame/switcher/SwitcherItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "bitmapDrawable"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem$1;->this$0:Lcom/didi/frame/switcher/SwitcherItem;

    #getter for: Lcom/didi/frame/switcher/SwitcherItem;->mImageIcon:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherItem;->access$000(Lcom/didi/frame/switcher/SwitcherItem;)Lx/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherItem$1;->this$0:Lcom/didi/frame/switcher/SwitcherItem;

    #getter for: Lcom/didi/frame/switcher/SwitcherItem;->mImageIcon:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherItem;->access$000(Lcom/didi/frame/switcher/SwitcherItem;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    return-void
.end method
