.class public Lcom/zhihu/android/app/util/ar;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static final a:Lcom/zhihu/android/app/util/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/zhihu/android/app/util/ar;

    invoke-direct {v0}, Lcom/zhihu/android/app/util/ar;-><init>()V

    sput-object v0, Lcom/zhihu/android/app/util/ar;->a:Lcom/zhihu/android/app/util/ar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a()Lcom/zhihu/android/app/util/ar;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/zhihu/android/app/util/ar;->a:Lcom/zhihu/android/app/util/ar;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 46
    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    const-string v2, "theme"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    packed-switch v1, :pswitch_data_0

    .line 56
    :goto_0
    :pswitch_0
    return v0

    .line 54
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v0, "theme"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-static {}, Landroid/support/v4/content/l$a;->a()Landroid/support/v4/content/l$a;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "theme"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 64
    return-void
.end method
