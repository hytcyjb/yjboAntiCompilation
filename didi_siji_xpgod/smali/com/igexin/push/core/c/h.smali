.class Lcom/igexin/push/core/c/h;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/core/c/h;->a:Lcom/igexin/push/core/c/f;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xf

    sget-boolean v3, Lcom/igexin/push/core/g;->Q:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
