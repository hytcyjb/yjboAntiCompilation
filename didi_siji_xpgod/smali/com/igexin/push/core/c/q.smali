.class Lcom/igexin/push/core/c/q;
.super Lcom/igexin/push/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/c/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/core/c/q;->a:Lcom/igexin/push/core/c/f;

    invoke-direct {p0}, Lcom/igexin/push/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x7

    sget-wide v3, Lcom/igexin/push/core/g;->J:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method
