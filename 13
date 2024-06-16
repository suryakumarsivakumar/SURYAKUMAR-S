#include <stdio.h>
#include <stdlib.h>

#define N 3  // Number of friends

void min_cash_flow(int graph[N][N]) {
    int amount[N] = {0};
    for (int p = 0; p < N; p++)
        for (int i = 0; i < N; i++)
            amount[p] += (graph[i][p] - graph[p][i]);

    while (1) {
        int max_credit = 0, max_debit = 0;
        for (int i = 1; i < N; i++) {
            if (amount[i] > amount[max_credit]) max_credit = i;
            if (amount[i] < amount[max_debit]) max_debit = i;
        }
        if (amount[max_credit] == 0 && amount[max_debit] == 0) break;

        int min = amount[max_credit] < -amount[max_debit] ? amount[max_credit] : -amount[max_debit];
        amount[max_credit] -= min;
        amount[max_debit] += min;

        printf("Person %d pays %d to Person %d\n", max_debit, min, max_credit);
    }
}

int main() {
    int graph[N][N] = { {0, 1000, 2000},
                        {0, 0, 5000},
                        {0, 0, 0} };
    min_cash_flow(graph);
    return 0;
}
