.class Lcom/google/android/gms/tagmanager/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic aoB:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$d;->aoB:Lcom/google/android/gms/tagmanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o$d;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    return-void
.end method


# virtual methods
.method public cr(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aoB:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/o;->cr(Ljava/lang/String;)V

    return-void
.end method

.method public nU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aoB:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->nU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nW()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aoB:Lcom/google/android/gms/tagmanager/o;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/o;->g(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/cg;->eJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$d;->aoB:Lcom/google/android/gms/tagmanager/o;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;J)V

    :cond_0
    return-void
.end method
