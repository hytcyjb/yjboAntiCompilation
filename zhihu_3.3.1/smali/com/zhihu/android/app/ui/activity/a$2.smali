.class Lcom/zhihu/android/app/ui/activity/a$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/android/app/ui/activity/a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhihu/android/app/ui/activity/a;


# direct methods
.method constructor <init>(Lcom/zhihu/android/app/ui/activity/a;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/zhihu/android/app/ui/activity/a$2;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 363
    invoke-static {}, Lcom/zhihu/android/app/util/ar;->a()Lcom/zhihu/android/app/util/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/a$2;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-virtual {v1, v2}, Lcom/zhihu/android/app/util/ar;->a(Landroid/content/Context;)I

    move-result v1

    .line 364
    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/a$2;->a:Lcom/zhihu/android/app/ui/activity/a;

    invoke-virtual {v2, v0}, Lcom/zhihu/android/app/ui/activity/a;->b(I)Z

    .line 366
    iget-object v0, p0, Lcom/zhihu/android/app/ui/activity/a$2;->a:Lcom/zhihu/android/app/ui/activity/a;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Lcom/zhihu/android/app/ui/activity/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090328

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v2, 0x7f09031a

    new-instance v3, Lcom/zhihu/android/app/ui/activity/a$2$1;

    invoke-direct {v3, p0}, Lcom/zhihu/android/app/ui/activity/a$2$1;-><init>(Lcom/zhihu/android/app/ui/activity/a$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    iget-object v2, p0, Lcom/zhihu/android/app/ui/activity/a$2;->a:Lcom/zhihu/android/app/ui/activity/a;

    .line 372
    invoke-virtual {v2}, Lcom/zhihu/android/app/ui/activity/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar;->a(I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 373
    invoke-static {v1}, Lcom/zhihu/android/app/ui/activity/a;->c(I)I

    .line 374
    return-void
.end method
