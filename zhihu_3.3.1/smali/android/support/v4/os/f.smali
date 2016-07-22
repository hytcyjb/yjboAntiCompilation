.class Landroid/support/v4/os/f;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"


# direct methods
.method static a(Landroid/support/v4/os/d;)Landroid/os/Parcelable$Creator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/d",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Landroid/support/v4/os/e;

    invoke-direct {v0, p0}, Landroid/support/v4/os/e;-><init>(Landroid/support/v4/os/d;)V

    return-object v0
.end method
