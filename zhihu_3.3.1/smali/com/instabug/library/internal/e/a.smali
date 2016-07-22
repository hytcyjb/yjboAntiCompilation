.class public Lcom/instabug/library/internal/e/a;
.super Ljava/lang/Object;
.source "SdkStyle.java"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v0

    .line 23
    :cond_0
    return-object p0
.end method
