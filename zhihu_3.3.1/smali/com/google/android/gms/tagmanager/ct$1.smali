.class Lcom/google/android/gms/tagmanager/ct$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ct;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cr$c;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/l$a",
        "<",
        "Lcom/google/android/gms/tagmanager/cr$a;",
        "Lcom/google/android/gms/tagmanager/bz",
        "<",
        "Lcom/google/android/gms/internal/d$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic are:Lcom/google/android/gms/tagmanager/ct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ct$1;->are:Lcom/google/android/gms/tagmanager/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cr$a;Lcom/google/android/gms/tagmanager/bz;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cr$a;",
            "Lcom/google/android/gms/tagmanager/bz",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/bz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->qH()I

    move-result v0

    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/tagmanager/cr$a;

    check-cast p2, Lcom/google/android/gms/tagmanager/bz;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ct$1;->a(Lcom/google/android/gms/tagmanager/cr$a;Lcom/google/android/gms/tagmanager/bz;)I

    move-result v0

    return v0
.end method
