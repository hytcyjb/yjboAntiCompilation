.class Landroid/support/design/widget/f;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static a(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/support/design/widget/f;->b(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/design/widget/f;->c(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    sget-boolean v2, Landroid/support/design/widget/f;->b:Z

    if-nez v2, :cond_0

    .line 57
    :try_start_0
    const-class v2, Landroid/graphics/drawable/DrawableContainer;

    const-string v3, "setConstantState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/design/widget/f;->a:Ljava/lang/reflect/Method;

    .line 59
    sget-object v2, Landroid/support/design/widget/f;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    sput-boolean v0, Landroid/support/design/widget/f;->b:Z

    .line 65
    :cond_0
    sget-object v2, Landroid/support/design/widget/f;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 67
    :try_start_1
    sget-object v2, Landroid/support/design/widget/f;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_1
    return v0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    const-string v2, "DrawableUtils"

    const-string v3, "Could not fetch setConstantState(). Oh well."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    const-string v0, "DrawableUtils"

    const-string v2, "Could not invoke setConstantState(). Oh well."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 73
    goto :goto_1
.end method

.method private static c(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 78
    sget-boolean v1, Landroid/support/design/widget/f;->d:Z

    if-nez v1, :cond_0

    .line 80
    :try_start_0
    const-class v1, Landroid/graphics/drawable/DrawableContainer;

    const-string v2, "mDrawableContainerStateField"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/design/widget/f;->c:Ljava/lang/reflect/Field;

    .line 82
    sget-object v1, Landroid/support/design/widget/f;->c:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    sput-boolean v0, Landroid/support/design/widget/f;->d:Z

    .line 88
    :cond_0
    sget-object v1, Landroid/support/design/widget/f;->c:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 90
    :try_start_1
    sget-object v1, Landroid/support/design/widget/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    return v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string v1, "DrawableUtils"

    const-string v2, "Could not fetch mDrawableContainerStateField. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    const-string v0, "DrawableUtils"

    const-string v1, "Could not set mDrawableContainerStateField. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
