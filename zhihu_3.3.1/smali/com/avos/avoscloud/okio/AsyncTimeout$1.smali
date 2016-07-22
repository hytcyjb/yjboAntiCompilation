.class Lcom/avos/avoscloud/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okio/AsyncTimeout;->sink(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/avos/avoscloud/okio/Sink;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okio/AsyncTimeout;Lcom/avos/avoscloud/okio/Sink;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->val$sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->enter()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->val$sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Sink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Z)V

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->enter()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->val$sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Sink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v0, 0x1

    .line 173
    iget-object v1, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Z)V

    .line 175
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->val$sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->enter()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->val$sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Sink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Z)V

    .line 162
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/avos/avoscloud/okio/AsyncTimeout$1;->this$0:Lcom/avos/avoscloud/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method
