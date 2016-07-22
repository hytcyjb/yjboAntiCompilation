.class Landroid/support/v4/content/l$a$b;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"

# interfaces
.implements Landroid/support/v4/content/l$a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/l$1;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/content/l$a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
