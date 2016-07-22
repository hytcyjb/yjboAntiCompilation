.class Lcom/zhihu/android/app/ui/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/MainActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$4;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$4;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090329

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/zhihu/android/app/ui/activity/MainActivity$4$1;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/activity/MainActivity$4$1;-><init>(Lcom/zhihu/android/app/ui/activity/MainActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/activity/MainActivity$4;->a:Lcom/zhihu/android/app/ui/activity/MainActivity;

    .line 805
    invoke-virtual {v1}, Lcom/zhihu/android/app/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 806
    return-void
.end method
