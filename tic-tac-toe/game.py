import random


# Draws the Board
def draw_board(board):

    print(board[7] + ' ' + board[8] + ' ' + board[9])
    print(board[4] + ' ' + board[5] + ' ' + board[6])
    print(board[1] + ' ' + board[2] + ' ' + board[3])


# Inputs player's letter
def input_player_letter():
    letter = ''

    while not letter == 'X' and not letter == 'O':
        print("Do you want X or O")
        letter = input().upper()

    if letter == 'X':
        return ['X', 'O']
    else:
        return ['O', 'X']


# Decides who goes first
def who_goes_first():
    if random.randint(0, 1) == 0:
        return 'computer'
    else:
        return 'player'


# Asks player if they want to play again
def play_again():

    answer = ''
    while answer not in ['y', 'n']:
        print("Do you want to play again?(y/n)")
        answer = input().lower()

    if answer == 'y':
        return True
    else:
        return False


# Makes move
def make_move(board, value, move):
    return board[move] == value


# checks if winning situation is reached
def is_winner(bo, le):

    return ((bo[7] == le and bo[8] == le and bo[9] == le) or
            (bo[4] == le and bo[5] == le and bo[6] == le) or
            (bo[1] == le and bo[2] == le and bo[3] == le) or
            (bo[7] == le and bo[4] == le and bo[1] == le) or
            (bo[8] == le and bo[5] == le and bo[2] == le) or
            (bo[9] == le and bo[6] == le and bo[3] == le) or
            (bo[7] == le and bo[5] == le and bo[3] == le) or
            (bo[9] == le and bo[5] == le and bo[1] == le))


# Creates a duplicate board and checks optimal move
def get_duplicate_board(board):
    duplicate = []

    for value in board:
        duplicate.append(value)

    return duplicate


# Checks if the target space is free
def is_space_free(board, move):
    return board[move] == ''


# Gets the move by player
def get_player_move(board):
    move = None

    while move not in [1, 2, 3, 4, 5, 6, 7, 8, 9] or not is_space_free(board, move):
        print("Enter your move position(1-9) ")
        move = int(input())

    return int(move)


# Chooses random move from the given list if moves else returns None
def get_random_move(board, moves_list):

    possible_moves = []

    for move in moves_list:
        if is_space_free(board, move):
            possible_moves.append(move)

    if len(possible_moves) != 0:
        return random.choice(possible_moves)
    else:
        return None


# Gets the move by AI
def get_computer_move(board, computer_letter):

    if computer_letter == 'X':
        player_letter = 'O'
    else:
        player_letter = 'X'


    # Check if AI is winner
    for i in range(1, 10):
        copy = get_duplicate_board(board)
        if is_space_free(copy, i):
            make_move(copy, computer_letter, i)
            if is_winner(board, computer_letter):
                return i


    # Check if player is winner and block it
    for i in range(1, 10):
        copy = get_duplicate_board(board)
        if is_space_free(copy, i):
            make_move(copy, player_letter, i)
            if is_winner(copy, player_letter):
                return i


    # If nobody's is winner in the very next move, occupy the corners
    move = get_random_move(board, [1, 3, 7, 9])
    if move is not None:
        return move


    # If corners aren't free, occupy the center
    if is_space_free(board, 5):
        return 5


    # Else, occupy any random edge
    return get_random_move(board, [2, 4, 6, 8])


# Check if the board is full (if yes then declare tie)
def is_board_full(board):

    for i in range(1, 10):
        if is_space_free(board, i):
            return False

    return True


#######################################################################################################################
###########################################          GAME STARTS            ###########################################
#######################################################################################################################

print("Welcome to Tic-Tac-Toe!")

while True:
    game_board = ['']*10
    player_value, computer_value = input_player_letter()

    turn = who_goes_first()
    print("The " + turn + " Will go first")
    game_is_playing = True

    while game_is_playing:
        if turn == 'computer':
            move = get_computer_move(game_board, computer_value)
            make_move(game_board, computer_value, move)

            if is_winner(game_board, computer_value):
                draw_board(game_board)
                print("Sorry You lost the game :(")
                game_is_playing = False

            else:
                if is_board_full(game_board):
                    draw_board(game_board)
                    print("It is a draw")
                    break

                else:
                    turn = 'player'

        elif turn == 'player':
            draw_board(game_board)
            move = get_player_move(game_board)
            make_move(game_board, player_value, move)

            if is_winner(game_board, player_value):
                print("Congrats! You won the game")
                game_is_playing = False

            else:
                if is_board_full(game_board):
                    print("It is a draw")
                    break

                else:
                    turn = 'computer'

    if not play_again():
        break











