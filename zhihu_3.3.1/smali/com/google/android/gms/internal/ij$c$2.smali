.class Lcom/google/android/gms/internal/ij$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ij$c;->b(Lcom/google/android/gms/internal/il;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GT:Lcom/google/android/gms/internal/ij$c;

.field final synthetic GU:Lcom/google/android/gms/internal/il;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ij$c;Lcom/google/android/gms/internal/il;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ij$c$2;->GT:Lcom/google/android/gms/internal/ij$c;

    iput-object p2, p0, Lcom/google/android/gms/internal/ij$c$2;->GU:Lcom/google/android/gms/internal/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ij$c$2;->GT:Lcom/google/android/gms/internal/ij$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ij$c;->GQ:Lcom/google/android/gms/internal/ij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ij$c$2;->GU:Lcom/google/android/gms/internal/il;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ij;->a(Lcom/google/android/gms/internal/ij;Lcom/google/android/gms/internal/il;)V

    return-void
.end method
