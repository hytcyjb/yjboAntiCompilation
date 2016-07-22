.class Landroid/support/v7/widget/i;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/support/v7/widget/h;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    .line 32
    iput-object p2, p0, Landroid/support/v7/widget/i;->b:Landroid/support/v7/widget/h;

    .line 33
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_2

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/i;->b:Landroid/support/v7/widget/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/i;->b:Landroid/support/v7/widget/h;

    iget-object v1, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    :goto_0
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Landroid/support/v7/widget/w;->b(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_1
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 36
    iget-object v0, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$k;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ap;

    move-result-object v1

    .line 39
    :try_start_0
    sget v0, Landroid/support/v7/a/a$k;->AppCompatImageView_android_src:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ap;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    iget-object v2, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_0
    sget v0, Landroid/support/v7/a/a$k;->AppCompatImageView_srcCompat:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/ap;->g(II)I

    move-result v0

    .line 45
    if-eq v0, v3, :cond_1

    .line 46
    iget-object v2, p0, Landroid/support/v7/widget/i;->b:Landroid/support/v7/widget/h;

    iget-object v3, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    iget-object v2, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    invoke-static {v0}, Landroid/support/v7/widget/w;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/ap;->a()V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ap;->a()V

    throw v0
.end method
