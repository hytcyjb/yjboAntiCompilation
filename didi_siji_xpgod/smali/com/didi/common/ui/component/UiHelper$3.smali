.class final Lcom/didi/common/ui/component/UiHelper$3;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/didi/common/ui/component/UiHelper$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/didi/common/ui/component/UiHelper$3;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 196
    return-void
.end method
