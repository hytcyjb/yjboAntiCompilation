.class public Landroid/databinding/l;
.super Landroid/databinding/b;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/b",
        "<",
        "Landroid/databinding/h$a;",
        "Landroid/databinding/h;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/b$a",
            "<",
            "Landroid/databinding/h$a;",
            "Landroid/databinding/h;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/databinding/l$1;

    invoke-direct {v0}, Landroid/databinding/l$1;-><init>()V

    sput-object v0, Landroid/databinding/l;->a:Landroid/databinding/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/databinding/l;->a:Landroid/databinding/b$a;

    invoke-direct {p0, v0}, Landroid/databinding/b;-><init>(Landroid/databinding/b$a;)V

    .line 34
    return-void
.end method
