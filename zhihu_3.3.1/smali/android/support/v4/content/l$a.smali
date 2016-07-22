.class public final Landroid/support/v4/content/l$a;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/l$a$a;,
        Landroid/support/v4/content/l$a$b;,
        Landroid/support/v4/content/l$a$c;
    }
.end annotation


# static fields
.field private static a:Landroid/support/v4/content/l$a;


# instance fields
.field private final b:Landroid/support/v4/content/l$a$c;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Landroid/support/v4/content/l$a$a;

    invoke-direct {v0, v2}, Landroid/support/v4/content/l$a$a;-><init>(Landroid/support/v4/content/l$1;)V

    iput-object v0, p0, Landroid/support/v4/content/l$a;->b:Landroid/support/v4/content/l$a$c;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Landroid/support/v4/content/l$a$b;

    invoke-direct {v0, v2}, Landroid/support/v4/content/l$a$b;-><init>(Landroid/support/v4/content/l$1;)V

    iput-object v0, p0, Landroid/support/v4/content/l$a;->b:Landroid/support/v4/content/l$a$c;

    goto :goto_0
.end method

.method public static a()Landroid/support/v4/content/l$a;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/support/v4/content/l$a;->a:Landroid/support/v4/content/l$a;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/support/v4/content/l$a;

    invoke-direct {v0}, Landroid/support/v4/content/l$a;-><init>()V

    sput-object v0, Landroid/support/v4/content/l$a;->a:Landroid/support/v4/content/l$a;

    .line 63
    :cond_0
    sget-object v0, Landroid/support/v4/content/l$a;->a:Landroid/support/v4/content/l$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/content/l$a;->b:Landroid/support/v4/content/l$a$c;

    invoke-interface {v0, p1}, Landroid/support/v4/content/l$a$c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 68
    return-void
.end method
